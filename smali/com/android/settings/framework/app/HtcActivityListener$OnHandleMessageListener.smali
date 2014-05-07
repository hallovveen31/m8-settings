.class public interface abstract Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.super Ljava/lang/Object;
.source "HtcActivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHandleMessageListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
.end method

.method public abstract onHandleNonUiMessage(Landroid/os/Message;)Z
.end method

.method public abstract onHandleUiMessage(Landroid/os/Message;)Z
.end method
