.class public Lcom/android/settings/framework/activity/display/HtcBrightnessAlertActivity;
.super Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;
.source "HtcBrightnessAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreatePreference(Landroid/content/Context;)Lcom/htc/preference/HtcDialogPreference;
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/display/HtcBrightnessPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
