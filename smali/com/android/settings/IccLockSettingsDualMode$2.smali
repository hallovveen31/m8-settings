.class Lcom/android/settings/IccLockSettingsDualMode$2;
.super Landroid/os/Handler;
.source "IccLockSettingsDualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettingsDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettingsDualMode;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettingsDualMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/IccLockSettingsDualMode$2;->this$0:Lcom/android/settings/IccLockSettingsDualMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode$2;->this$0:Lcom/android/settings/IccLockSettingsDualMode;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    #calls: Lcom/android/settings/IccLockSettingsDualMode;->iccLockChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/settings/IccLockSettingsDualMode;->access$000(Lcom/android/settings/IccLockSettingsDualMode;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode$2;->this$0:Lcom/android/settings/IccLockSettingsDualMode;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    :goto_2
    #calls: Lcom/android/settings/IccLockSettingsDualMode;->iccPinChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/settings/IccLockSettingsDualMode;->access$100(Lcom/android/settings/IccLockSettingsDualMode;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode$2;->this$0:Lcom/android/settings/IccLockSettingsDualMode;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    :goto_3
    #calls: Lcom/android/settings/IccLockSettingsDualMode;->unLockIccPinChanged(Z)V
    invoke-static {v3, v1}, Lcom/android/settings/IccLockSettingsDualMode;->access$200(Lcom/android/settings/IccLockSettingsDualMode;Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
