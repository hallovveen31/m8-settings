.class Lcom/android/settings/ChargeOnlyEnabler$1;
.super Ljava/lang/Object;
.source "ChargeOnlyEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChargeOnlyEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcSwitchPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChargeOnlyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ChargeOnlyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "SmartNS_ChargeOnly_Enabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on click value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/ChargeOnlyEnabler;->access$000(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ChargeOnly_Mode"

    invoke-static {v4, v5, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    if-eqz v0, :cond_0

    new-instance v4, Lcom/android/settings/ChargeOnlyEnabler$1$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ChargeOnlyEnabler$1$1;-><init>(Lcom/android/settings/ChargeOnlyEnabler$1;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    iget-object v4, p0, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/ChargeOnlyEnabler;->access$200(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v4, p0, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v4, v4, Lcom/android/settings/ChargeOnlyEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "is_charge_only_opening"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/ChargeOnlyEnabler;->access$000(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/content/Context;

    move-result-object v4

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v4, v2}, Lcom/android/settings/ChargeOnlyEnabler;->enableAllUSB(Landroid/content/Context;Z)V

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/ChargeOnlyEnabler;->access$000(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ChargeOnlyEnabler;->cancelNotification(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/ChargeOnlyEnabler;->access$200(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.settings.action.CHARGE_ONLY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "enabled"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/ChargeOnlyEnabler;->access$000(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v4, "SmartNS_ChargeOnly_Enabler"

    const-string v5, "broadcast enable Charge only mode: false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
