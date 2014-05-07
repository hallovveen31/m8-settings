.class Lcom/android/settings/wifi/WebLoginActivity$5;
.super Landroid/os/CountDownTimer;
.source "WebLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WebLoginActivity;->setupCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WebLoginActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WebLoginActivity;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity$5;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$5;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WebLoginActivity;->finish()V

    .line 303
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity$5;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/wifi/WebLoginActivity;->access$700(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity$5;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    const v2, 0x7f0c0b31

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    div-long v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WebLoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, noticeText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity$5;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/wifi/WebLoginActivity;->access$700(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .end local v0           #noticeText:Ljava/lang/String;
    :cond_0
    return-void
.end method
