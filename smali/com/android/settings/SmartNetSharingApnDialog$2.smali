.class Lcom/android/settings/SmartNetSharingApnDialog$2;
.super Ljava/lang/Thread;
.source "SmartNetSharingApnDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNetSharingApnDialog;->enableTetheringWithApn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNetSharingApnDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNetSharingApnDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 94
    const-string v1, "SmartNetSharingApnDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PS enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->sp:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/settings/SmartNetSharingApnDialog;->access$100(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "ps_enabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$100(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ps_enabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.stop_IPT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$100(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ps_enabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 102
    const-string v1, "SmartNetSharingApnDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wait IPT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->pause:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$200(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0           #count:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 110
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$2;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.startIS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 115
    return-void
.end method
