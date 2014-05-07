.class Lcom/android/settings/SmartNSEnabler$9;
.super Ljava/lang/Thread;
.source "SmartNSEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSEnabler;->enableInternetPassThrough()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNSEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNSEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1192
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1193
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hasTethered"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isNSOpening"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    .line 1196
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$1700()Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 1199
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1200
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 1201
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 1202
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 1205
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ps_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1207
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->waitIPTClose(Landroid/content/Context;)V

    .line 1210
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "startCTModem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1211
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/settings/SmartNSUtility;->StartCTModem(Landroid/content/Context;Z)V

    .line 1213
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.start_IPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "trigger_from_ipt_ui"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1215
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$9;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1216
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1217
    return-void
.end method
