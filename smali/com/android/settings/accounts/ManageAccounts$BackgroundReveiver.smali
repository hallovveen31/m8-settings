.class Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;
.super Landroid/content/BroadcastReceiver;
.source "ManageAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManageAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundReveiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccounts;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccounts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/accounts/ManageAccounts;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_TAP_TO_TOP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-virtual {v1}, Lcom/android/settings/accounts/ManageAccounts;->backToTop()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/accounts/Util;->ACTION_AUTO_SYNC_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mAutoSyncToggle:Lcom/android/settings/accounts/OptionTogglePreference;
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccounts;->access$700(Lcom/android/settings/accounts/ManageAccounts;)Lcom/android/settings/accounts/OptionTogglePreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mAutoSyncToggle:Lcom/android/settings/accounts/OptionTogglePreference;
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccounts;->access$700(Lcom/android/settings/accounts/ManageAccounts;)Lcom/android/settings/accounts/OptionTogglePreference;

    move-result-object v2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/accounts/ManageAccounts;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_AUTO_SYNC_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
