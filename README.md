# Inosoft Technical Test - Amazon Stock Price Prediction

## Description

This repository contains a technical test for the Machine Learning Engineer position at Inosoft Trans Sistem. The task involves using historical stock data from Amazon, specifically the Close price, to forecast future stock prices using a Recurrent Neural Network (RNN) model. The goal is to preprocess the data, build an RNN model, and evaluate its performance in predicting future stock prices.

## Prerequisites

Before you begin, ensure you have the following installed:

* **Python 3.12** (You can download it from [python.org](https://www.python.org/downloads/release/python-312/))
* **Jupyter Notebook** (can be installed via `pip` if not already installed)
* **Virtualenv** (for creating virtual environments, or use `venv` which is included with Python 3.12)

## Setting Up the Project

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/naobyprawira/inosoft-technical-test.git
cd inosoft-technical-test
```

### 2. Set Up the Virtual Environment Using `venv`

Create and activate a virtual environment with `venv` (included in Python 3.12):

* **On macOS/Linux:**

  ```bash
  python3 -m venv myenv
  source myenv/bin/activate
  ```

* **On Windows:**

  ```bash
  python -m venv myenv
  myenv\Scripts\activate
  ```

### 3. Install Required Dependencies

Once the virtual environment is activated, install the necessary dependencies:

```bash
pip install -r requirements.txt
```

### 4. Launch Jupyter Notebook / Open the Notebook on your IDE/Code Editor
Once the environment is set up, You can now directly open the notebook on your IDE/Code Editor (i.e. VSCode), which makes it easier.

Alternatively, you can launch the Jupyter notebook :

```bash
jupyter notebook
```

if you're new to jupyter notebook, it may prompt you to enter password, you must set it first on the command prompt :
```bash
jupyter notebook password
```

This will open the notebook interface in your browser.

### 5. Run the Notebook

In the Jupyter interface, navigate to the notebook file (e.g., `notebook.ipynb`) and start running the cells.

## File Descriptions

* **notebook.ipynb**: The main Jupyter notebook file containing data visualization and training history of models in `saved models`.
* **requirements.txt**: A list of Python dependencies required to run the project.
