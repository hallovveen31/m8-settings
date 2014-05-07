.class Lcom/android/settings/nfc/AndroidBeam$1;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/AndroidBeam;->addBackUpButton(Lcom/htc/widget/ActionBarExt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/AndroidBeam;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 87
    iget-object v4, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v4}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 88
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v4, "com.android.settings"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 93
    .local v3, rootIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v4}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 95
    .local v0, builder:Landroid/app/TaskStackBuilder;
    invoke-virtual {v0, v3}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 97
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    goto :goto_0
.end method
