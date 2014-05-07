.class public Lcom/android/settings/Settings$HtcDndSettingsActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcDndSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 929
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 931
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->supportDoNotDisturbFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/Settings$HtcDndSettingsActivity;->finish()V

    .line 934
    :cond_0
    return-void
.end method
