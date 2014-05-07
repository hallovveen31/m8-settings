.class Lcom/android/settings/ChargeOnlyEnabler$1$1;
.super Ljava/lang/Thread;
.source "ChargeOnlyEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChargeOnlyEnabler$1;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChargeOnlyEnabler$1;


# direct methods
.method constructor <init>(Lcom/android/settings/ChargeOnlyEnabler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChargeOnlyEnabler$1$1;->this$1:Lcom/android/settings/ChargeOnlyEnabler$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/ChargeOnlyEnabler$1$1;->this$1:Lcom/android/settings/ChargeOnlyEnabler$1;

    iget-object v2, v2, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v2, v2, Lcom/android/settings/ChargeOnlyEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v3, "hasTethered"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/ChargeOnlyEnabler$1$1;->this$1:Lcom/android/settings/ChargeOnlyEnabler$1;

    iget-object v2, v2, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v2, v2, Lcom/android/settings/ChargeOnlyEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v3, "isNSOpening"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/ChargeOnlyEnabler;->access$100()Landroid/os/ConditionVariable;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChargeOnlyEnabler$1$1;->this$1:Lcom/android/settings/ChargeOnlyEnabler$1;

    iget-object v2, v2, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/ChargeOnlyEnabler;->access$000(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->waitIPTClose(Landroid/content/Context;)V

    const-string v2, "SmartNS_ChargeOnly_Enabler"

    const-string v3, "enable Charge only mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/ChargeOnlyEnabler$1$1;->this$1:Lcom/android/settings/ChargeOnlyEnabler$1;

    iget-object v2, v2, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v2, v2, Lcom/android/settings/ChargeOnlyEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "is_charge_only_opening"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.settings.action.CHARGE_ONLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/ChargeOnlyEnabler$1$1;->this$1:Lcom/android/settings/ChargeOnlyEnabler$1;

    iget-object v2, v2, Lcom/android/settings/ChargeOnlyEnabler$1;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/ChargeOnlyEnabler;->access$000(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "SmartNS_ChargeOnly_Enabler"

    const-string v3, "broadcast enable Charge only mode: true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
