.class Lcom/android/settings/wifi/WebLoginActivity$4;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/settings/wifi/WebLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity$4;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$4;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$1100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCountDownTimer.start(); : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WebLoginActivity$4;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WebLoginActivity;->access$600(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$4;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$700(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$4;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$700(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$4;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$1100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method
