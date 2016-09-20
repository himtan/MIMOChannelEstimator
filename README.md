# MIMOChannelEstimator
This is a simulink model of a MIMO OFDM channel
Steps:
Training:
1.) Run the model for a certain time duration, the time duration will determine the amount of training data
2.) Run the training script, it will generate a file (nn_workspace) related to trained neural network

Running
1.) Once the network is trained and nn_workspace file is available the model will use this file to predict values
