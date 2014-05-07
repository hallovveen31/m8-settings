.class Lcom/android/settings/IccLockSettings$2;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 183
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 185
    .local v1, status:I
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 186
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN_DISABLE_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1

    .line 190
    const/4 v1, 0x2

    .line 198
    :cond_0
    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 210
    :goto_1
    return-void

    .line 192
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 202
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->iccLockChanged(I)V
    invoke-static {v2, v1}, Lcom/android/settings/IccLockSettings;->access$000(Lcom/android/settings/IccLockSettings;I)V

    goto :goto_1

    .line 206
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    #calls: Lcom/android/settings/IccLockSettings;->iccPinChanged(Z)V
    invoke-static {v3, v2}, Lcom/android/settings/IccLockSettings;->access$100(Lcom/android/settings/IccLockSettings;Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
