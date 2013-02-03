part of prediction_v1_3_api_client;

class Input {

  /** Input to the model for a prediction */
  InputInput input;

  /** Create new Input from JSON data */
  Input.fromJson(Map json) {
    if (json.containsKey("input")) {
      input = new InputInput.fromJson(json["input"]);
    }
  }

  /** Create JSON Object for Input */
  Map toJson() {
    var output = new Map();

    if (input != null) {
      output["input"] = input.toJson();
    }

    return output;
  }

  /** Return String representation of Input */
  String toString() => JSON.stringify(this.toJson());

}

/** Input to the model for a prediction */
class InputInput {

  /** Create new InputInput from JSON data */
  InputInput.fromJson(Map json) {
  }

  /** Create JSON Object for InputInput */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of InputInput */
  String toString() => JSON.stringify(this.toJson());

}

class Output {

  /** The unique name for the predictive model. */
  String id;

  /** What kind of resource this is. */
  String kind;

  /** The most likely class [Categorical models only]. */
  String outputLabel;

  /** A list of classes with their estimated probabilities [Categorical models only]. */
  List<OutputOutputMulti> outputMulti;

  /** The estimated regression value [Regression models only]. */
  num outputValue;

  /** A URL to re-request this resource. */
  String selfLink;

  /** Create new Output from JSON data */
  Output.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("outputLabel")) {
      outputLabel = json["outputLabel"];
    }
    if (json.containsKey("outputMulti")) {
      outputMulti = [];
      json["outputMulti"].forEach((item) {
        outputMulti.add(new OutputOutputMulti.fromJson(item));
      });
    }
    if (json.containsKey("outputValue")) {
      outputValue = json["outputValue"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Output */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (outputLabel != null) {
      output["outputLabel"] = outputLabel;
    }
    if (outputMulti != null) {
      output["outputMulti"] = new List();
      outputMulti.forEach((item) {
        output["outputMulti"].add(item.toJson());
      });
    }
    if (outputValue != null) {
      output["outputValue"] = outputValue;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Output */
  String toString() => JSON.stringify(this.toJson());

}

class OutputOutputMulti {

  /** The class label. */
  String label;

  /** The probability of the class. */
  num score;

  /** Create new OutputOutputMulti from JSON data */
  OutputOutputMulti.fromJson(Map json) {
    if (json.containsKey("label")) {
      label = json["label"];
    }
    if (json.containsKey("score")) {
      score = json["score"];
    }
  }

  /** Create JSON Object for OutputOutputMulti */
  Map toJson() {
    var output = new Map();

    if (label != null) {
      output["label"] = label;
    }
    if (score != null) {
      output["score"] = score;
    }

    return output;
  }

  /** Return String representation of OutputOutputMulti */
  String toString() => JSON.stringify(this.toJson());

}

class Training {

  /** The unique name for the predictive model. */
  String id;

  /** What kind of resource this is. */
  String kind;

  /** Model metadata. */
  TrainingModelInfo modelInfo;

  /** A URL to re-request this resource. */
  String selfLink;

  /** The current status of the training job. This can be one of following: RUNNING; DONE; ERROR; ERROR: TRAINING JOB NOT FOUND */
  String trainingStatus;

  /** A class weighting function, which allows the importance weights for classes to be specified [Categorical models only]. */
  List<TrainingUtility> utility;

  /** Create new Training from JSON data */
  Training.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("modelInfo")) {
      modelInfo = new TrainingModelInfo.fromJson(json["modelInfo"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("trainingStatus")) {
      trainingStatus = json["trainingStatus"];
    }
    if (json.containsKey("utility")) {
      utility = [];
      json["utility"].forEach((item) {
        utility.add(new TrainingUtility.fromJson(item));
      });
    }
  }

  /** Create JSON Object for Training */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (modelInfo != null) {
      output["modelInfo"] = modelInfo.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (trainingStatus != null) {
      output["trainingStatus"] = trainingStatus;
    }
    if (utility != null) {
      output["utility"] = new List();
      utility.forEach((item) {
        output["utility"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of Training */
  String toString() => JSON.stringify(this.toJson());

}

/** Model metadata. */
class TrainingModelInfo {

  /** Estimated accuracy of model taking utility weights into account [Categorical models only]. */
  num classWeightedAccuracy;

  /** A number between 0.0 and 1.0, where 1.0 is 100% accurate. This is an estimate, based on the amount and quality of the training data, of the estimated prediction accuracy. You can use this is a guide to decide whether the results are accurate enough for your needs. This estimate will be more reliable if your real input data is similar to your training data [Categorical models only]. */
  num classificationAccuracy;

  /** An output confusion matrix. This shows an estimate for how this model will do in predictions. This is first indexed by the true class label. For each true class label, this provides a pair {predicted_label, count}, where count is the estimated number of times the model will predict the predicted label given the true label. Will not output if more then 100 classes [Categorical models only]. */
  TrainingModelInfoConfusionMatrix confusionMatrix;

  /** A list of the confusion matrix row totals */
  TrainingModelInfoConfusionMatrixRowTotals confusionMatrixRowTotals;

  /** An estimated mean squared error. The can be used to measure the quality of the predicted model [Regression models only]. */
  num meanSquaredError;

  /** Type of predictive model (CLASSIFICATION or REGRESSION) */
  String modelType;

  /** Number of classes in the trained model [Categorical models only]. */
  String numberClasses;

  /** Number of valid data instances used in the trained model. */
  String numberInstances;

  /** Create new TrainingModelInfo from JSON data */
  TrainingModelInfo.fromJson(Map json) {
    if (json.containsKey("classWeightedAccuracy")) {
      classWeightedAccuracy = json["classWeightedAccuracy"];
    }
    if (json.containsKey("classificationAccuracy")) {
      classificationAccuracy = json["classificationAccuracy"];
    }
    if (json.containsKey("confusionMatrix")) {
      confusionMatrix = new TrainingModelInfoConfusionMatrix.fromJson(json["confusionMatrix"]);
    }
    if (json.containsKey("confusionMatrixRowTotals")) {
      confusionMatrixRowTotals = new TrainingModelInfoConfusionMatrixRowTotals.fromJson(json["confusionMatrixRowTotals"]);
    }
    if (json.containsKey("meanSquaredError")) {
      meanSquaredError = json["meanSquaredError"];
    }
    if (json.containsKey("modelType")) {
      modelType = json["modelType"];
    }
    if (json.containsKey("numberClasses")) {
      numberClasses = json["numberClasses"];
    }
    if (json.containsKey("numberInstances")) {
      numberInstances = json["numberInstances"];
    }
  }

  /** Create JSON Object for TrainingModelInfo */
  Map toJson() {
    var output = new Map();

    if (classWeightedAccuracy != null) {
      output["classWeightedAccuracy"] = classWeightedAccuracy;
    }
    if (classificationAccuracy != null) {
      output["classificationAccuracy"] = classificationAccuracy;
    }
    if (confusionMatrix != null) {
      output["confusionMatrix"] = confusionMatrix.toJson();
    }
    if (confusionMatrixRowTotals != null) {
      output["confusionMatrixRowTotals"] = confusionMatrixRowTotals.toJson();
    }
    if (meanSquaredError != null) {
      output["meanSquaredError"] = meanSquaredError;
    }
    if (modelType != null) {
      output["modelType"] = modelType;
    }
    if (numberClasses != null) {
      output["numberClasses"] = numberClasses;
    }
    if (numberInstances != null) {
      output["numberInstances"] = numberInstances;
    }

    return output;
  }

  /** Return String representation of TrainingModelInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** An output confusion matrix. This shows an estimate for how this model will do in predictions. This is first indexed by the true class label. For each true class label, this provides a pair {predicted_label, count}, where count is the estimated number of times the model will predict the predicted label given the true label. Will not output if more then 100 classes [Categorical models only]. */
class TrainingModelInfoConfusionMatrix {

  /** Create new TrainingModelInfoConfusionMatrix from JSON data */
  TrainingModelInfoConfusionMatrix.fromJson(Map json) {
  }

  /** Create JSON Object for TrainingModelInfoConfusionMatrix */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of TrainingModelInfoConfusionMatrix */
  String toString() => JSON.stringify(this.toJson());

}

/** A list of the confusion matrix row totals */
class TrainingModelInfoConfusionMatrixRowTotals {

  /** Create new TrainingModelInfoConfusionMatrixRowTotals from JSON data */
  TrainingModelInfoConfusionMatrixRowTotals.fromJson(Map json) {
  }

  /** Create JSON Object for TrainingModelInfoConfusionMatrixRowTotals */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of TrainingModelInfoConfusionMatrixRowTotals */
  String toString() => JSON.stringify(this.toJson());

}

/** Class label (string). */
class TrainingUtility {

  /** Create new TrainingUtility from JSON data */
  TrainingUtility.fromJson(Map json) {
  }

  /** Create JSON Object for TrainingUtility */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of TrainingUtility */
  String toString() => JSON.stringify(this.toJson());

}

class Update {

  /** The true class label of this instance */
  String classLabel;

  /** Create new Update from JSON data */
  Update.fromJson(Map json) {
    if (json.containsKey("classLabel")) {
      classLabel = json["classLabel"];
    }
  }

  /** Create JSON Object for Update */
  Map toJson() {
    var output = new Map();

    if (classLabel != null) {
      output["classLabel"] = classLabel;
    }

    return output;
  }

  /** Return String representation of Update */
  String toString() => JSON.stringify(this.toJson());

}

