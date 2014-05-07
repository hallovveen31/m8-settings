.class public interface abstract Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;
.super Ljava/lang/Object;
.source "HtcIRoamingStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getRoamingState()Lcom/android/settings/framework/core/telephony/HtcRoamingState;
.end method

.method public abstract getRoamingStateText()Ljava/lang/String;
.end method

.method public abstract setOnRoamingStateChangedListener(Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier$OnRoamingStateChangedListener;)V
.end method
