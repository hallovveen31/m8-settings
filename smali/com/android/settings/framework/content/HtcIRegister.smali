.class public interface abstract Lcom/android/settings/framework/content/HtcIRegister;
.super Ljava/lang/Object;
.source "HtcIRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;
    }
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract register()V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract unregister()V
.end method
