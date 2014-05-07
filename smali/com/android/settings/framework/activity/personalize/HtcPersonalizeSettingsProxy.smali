.class public Lcom/android/settings/framework/activity/personalize/HtcPersonalizeSettingsProxy;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcPersonalizeSettingsProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string v1, "open_personalize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/personalize/HtcPersonalizeSettingsProxy;->startActivity(Landroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/personalize/HtcPersonalizeSettingsProxy;->finish()V

    .line 21
    return-void
.end method
