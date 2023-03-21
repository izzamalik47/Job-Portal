import React, { useState } from "react";
import { motion } from "framer-motion";
import axios from "axios";
import "../styles/home.css";

const skills = [
  "eCommerce",
  "Mobile Development",
  "UI/UX",
  "Web Development",
  "Software Development",
  "Artificial Intelligence",
  "Machine Learning",
  "Consulting",
  "Internet of Things (IoT)",
  "Sales & Marketing",
  "Software Services",
  "Software Products",
  "Design & Creative",
  "BPO",
  "Cyber Security",
  "Fintech",
  "Game Development",
  "Hardware Engineering",
  "Human Resources",
  "Big Data Analytics",
  "Business Connectivity Solutions",
  "Customer Relationship Management (CRM)",
  "Dashboard Reports Development",
  "Data Sciences",
  "Desktop Development",
  "E-Learning",
];

const variants = {
  hidden: {
    opacity: 0,
    y: 50,
  },
  visible: {
    opacity: 1,
    y: 0,
    transition: {
      duration: 0.5,
    },
  },
};

export default function Home() {
  const [name, setName] = useState("");
  const [city, setCity] = useState("");
  const [selectedSkills, setSelectedSkills] = useState([]);
  const [companyName, setCompanyName] = useState(null);

  const handleNameChange = (event) => {
    setName(event.target.value);
  };

  const handleCityChange = (event) => {
    setCity(event.target.value);
  };

  const handleSkillSelect = (skill) => {
    setSelectedSkills([...selectedSkills, skill]);
  };

  const handleSkillDeselect = (skill) => {
    setSelectedSkills(
      selectedSkills.filter((selectedSkill) => selectedSkill !== skill)
    );
  };

  const handleClearSkills = () => {
    setSelectedSkills([]);
    setCompanyName("");
    setName("");
    setCity("");
  };

  const handleSubmit = () => {
    if (!name) {
      alert("Please enter your full name.");
      return;
    }
    axios({
      method: "post",
      url: "http://localhost:5000/predict",
      data: {
        selectedSkills,
      },
    })
      .then((res) => {
        setCompanyName(res.data.company);
      })
      .catch((err) => {
        alert(err.response.data.error);
      });
  };

  return (
    <div className="job-selector">
      <motion.h1
        className="job-selector__title"
        variants={variants}
        initial="hidden"
        animate="visible"
      >
        Discover your Dream Job
      </motion.h1>
      <input
        type="text"
        value={name}
        onChange={handleNameChange}
        placeholder="Enter your Full Name"
        className="job-selector__input"
      />
      <input
        type="text"
        value={city}
        onChange={handleCityChange}
        placeholder="Enter your city"
        className="job-selector__input"
      />
      <div className="job-selector__skills">
        {skills.map((skill) => (
          <motion.button
            key={skill}
            className={`job-selector__skill ${
              selectedSkills.includes(skill)
                ? "job-selector__skill--selected"
                : ""
            }`}
            onClick={() =>
              selectedSkills.includes(skill)
                ? handleSkillDeselect(skill)
                : handleSkillSelect(skill)
            }
            whileHover={{ scale: 1.1 }}
            whileTap={{ scale: 0.9 }}
          >
            {skill}
          </motion.button>
        ))}
      </div>
      <div className="job-selector_btns">
        <button onClick={handleSubmit} className="job-selector__submit-button">
          Submit
        </button>
        <button
          onClick={handleClearSkills}
          className="job-selector__clear-button"
        >
          Clear
        </button>
      </div>
      {companyName && (
        <motion.div
          className="job-selector__company"
          variants={variants}
          initial="hidden"
          animate="visible"
        >
          <h2 className="job-selector__company-title">
            Hello {name}! Here's a Workplace Suiting your Skillset:{" "}
            <span className="company_name">
              {companyName} in {city}
            </span>
          </h2>
        </motion.div>
      )}
    </div>
  );
}
