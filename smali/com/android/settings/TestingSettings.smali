.class public Lcom/android/settings/TestingSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "TestingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    return-void
.end method
