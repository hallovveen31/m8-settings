.class Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mDefaultAPNUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
