# %% Import packages

from fastai.vision import cnn_learner, accuracy

# %% Function for exploring empirically optimal learning rates

def tune_lr(data, model, ps, wd, start_lr, end_lr, num_iters, pretrained=True, mixup=True):
    # Set up CNN learner
    learner = cnn_learner(data, model, metrics=accuracy, pretrained=pretrained, ps=ps, wd=wd)
    if mixup:
        learner = learner.mixup()

    # Explore possible learning rates
    learner.lr_find(start_lr=start_lr, end_lr=end_lr, num_it=num_iters)

    # Return learning rates and losses
    return learner.recorder.lrs, learner.recorder.losses
