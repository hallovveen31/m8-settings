.class Lcom/android/settings/SmartNSEnabler$5;
.super Ljava/lang/Thread;
.source "SmartNSEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSEnabler;->closeAll()V
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

    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sns_type"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hasTethered"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isNSOpening"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sns_closing"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ps_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sns_closing"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.stop_IPT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "startCTModem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$5;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/settings/SmartNSUtility;->StartCTModem(Landroid/content/Context;Z)V

    :cond_6
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
