.class public interface abstract Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupHostRelationship;
.super Ljava/lang/Object;
.source "HtcIPreferenceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcIPreferenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISetupHostRelationship"
.end annotation


# virtual methods
.method public abstract getHost()Lcom/android/settings/framework/app/HtcIInternalHost;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method
