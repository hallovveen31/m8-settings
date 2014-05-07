.class public interface abstract Lcom/android/settings/framework/app/HtcIInternalHost;
.super Ljava/lang/Object;
.source "HtcIInternalHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcIInternalHost$OnAddCallbackListener;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Ljava/lang/Object;)V
.end method

.method public abstract finish()V
.end method

.method public abstract getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getNonUiHandler()Landroid/os/Handler;
.end method

.method public abstract getUiHandler()Landroid/os/Handler;
.end method

.method public abstract onCreateInBackground(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroyInBackground()V
.end method

.method public abstract onDisplay()V
.end method

.method public abstract onDisplayInBackground()V
.end method

.method public abstract onHandleNonUiMessage(Landroid/os/Message;)V
.end method

.method public abstract onHandleUiMessage(Landroid/os/Message;)V
.end method

.method public abstract onPauseInBackground()V
.end method

.method public abstract onResumeInBackground()V
.end method

.method public abstract onStartInBackground()V
.end method

.method public abstract onStopInBackground()V
.end method

.method public abstract requestHandlers()V
.end method

.method public abstract requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V
.end method

.method public abstract runInNonUIThread(Ljava/lang/Runnable;)V
.end method

.method public abstract runInUIThread(Ljava/lang/Runnable;)V
.end method
