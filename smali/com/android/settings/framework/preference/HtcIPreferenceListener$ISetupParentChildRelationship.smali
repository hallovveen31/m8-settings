.class public interface abstract Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupParentChildRelationship;
.super Ljava/lang/Object;
.source "HtcIPreferenceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcIPreferenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISetupParentChildRelationship"
.end annotation


# virtual methods
.method public abstract getParent()Lcom/htc/preference/HtcPreferenceGroup;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract onAddIntoParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
.end method

.method public abstract onRemoveFromParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
.end method

.method public abstract setParent(Lcom/htc/preference/HtcPreferenceGroup;)V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract setVisibleInBackground(Z)V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->ASYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method
