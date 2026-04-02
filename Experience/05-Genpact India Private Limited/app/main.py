from flask import Flask, request, jsonify
import openai

app = Flask(_name_)

@app.route('/ask', methods=['POST'])
def ask():
    data = request.json
    question = data.get("question")

    # Mock response (safe for repo)
    response = f"AI Response for: {question}"

    return jsonify({"answer": response})

if _name_ == '_main_':
    app.run(host='0.0.0.0', port=8080)
