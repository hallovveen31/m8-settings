.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;
.super Ljava/lang/Object;
.source "HtcEncryption3LMPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 105
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    .line 108
    .local v3, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v4, "storage"

    invoke-virtual {v3, v4}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "encryption"

    invoke-interface {v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "type"

    const-string v6, "server"

    invoke-interface {v4, v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "action"

    const-string v6, "encryption"

    invoke-interface {v4, v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 112
    invoke-static {v3}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 115
    invoke-virtual {v3}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 117
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v4}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    const v5, 0x7f0c09a2

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0, v7}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 121
    invoke-virtual {v0, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 122
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 124
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 125
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;Lcom/htc/app/HtcProgressDialog;)V

    .line 135
    .local v2, runnable:Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method
