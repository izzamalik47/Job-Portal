from flask import Flask, request, jsonify
import pickle
import pandas as pd

app = Flask(__name__)

# load the saved model
with open('./data/saved_model.pkl', 'rb') as f:
  clf = pickle.load(f)

df = pd.read_excel('./data/all_company_data.xlsx')
# define the API endpoint
@app.route('/predict', methods=['POST'])
def predict_company():
  # get the skill from the request
  skills = request.json['selectedSkills']

  # predict the company based on the skill
  pred_num = clf.predict(skills)[0]
  companies = df['company_name'].unique()
  companies = {i:companies[i] for i in range(len(companies))}
  pred_name = companies[pred_num]

  # return the predicted company name
  response = {'company': pred_name}
  return jsonify(response)

# run the app
if __name__ == '__main__':
  print("working")
  app.run()
