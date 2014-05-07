.class Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$4;
.super Landroid/os/AsyncTask;
.source "HtcVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getDNDStateInBackgroud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V
    .locals 0
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$4;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1101
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "parm"

    .prologue
    .line 1107
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$4;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$000(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    .line 1108
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 1109
    .local v2, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1111
    :cond_0
    if-eqz v2, :cond_1

    .line 1112
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$4;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    const-string v4, "htc_dnd_feature_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDndMode:I
    invoke-static {v3, v4}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$1702(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 1113
    :catch_0
    move-exception v1

    .line 1114
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1101
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 1123
    return-void
.end method
