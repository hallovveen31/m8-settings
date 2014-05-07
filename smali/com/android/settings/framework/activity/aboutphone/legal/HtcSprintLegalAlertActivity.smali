.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcSprintLegalAlertActivity;
.super Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;
.source "HtcSprintLegalAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
