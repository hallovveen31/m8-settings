.class Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "CdmaApnGroupSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CdmaApnGroupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/CdmaApnGroupSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/CdmaApnGroupSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "restoreApnUiHandler"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    .line 926
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 927
    iput-object p3, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 928
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 932
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 940
    :goto_0
    return-void

    .line 934
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-virtual {v1}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 935
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/CdmaApnGroupSettings;->access$600()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 936
    iget-object v1, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method