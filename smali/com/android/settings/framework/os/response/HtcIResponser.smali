.class public interface abstract Lcom/android/settings/framework/os/response/HtcIResponser;
.super Ljava/lang/Object;
.source "HtcIResponser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;
    }
.end annotation


# virtual methods
.method public abstract addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z
.end method

.method public abstract broadcast(Landroid/os/Message;)V
.end method

.method public abstract removeAllOnResponseListeners()V
.end method

.method public abstract removeOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z
.end method
