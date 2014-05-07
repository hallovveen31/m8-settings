.class Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;
.super Landroid/webkit/WebViewClient;
.source "WebLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WebLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WebLoginActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WebLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WebLoginActivity;Lcom/android/settings/wifi/WebLoginActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$400(Lcom/android/settings/wifi/WebLoginActivity;)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$400(Lcom/android/settings/wifi/WebLoginActivity;)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalUrl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WebLoginActivity;->access$600(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$600(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$600(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$900(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mCountDownRunnalbe:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/wifi/WebLoginActivity;->access$800(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$900(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mCountDownRunnalbe:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/wifi/WebLoginActivity;->access$800(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$400(Lcom/android/settings/wifi/WebLoginActivity;)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$400(Lcom/android/settings/wifi/WebLoginActivity;)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalUrl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WebLoginActivity;->access$600(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$700(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$700(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WebLoginActivity;->access$900(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mCountDownRunnalbe:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/wifi/WebLoginActivity;->access$800(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError!! errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient$1;-><init>(Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #setter for: Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/settings/wifi/WebLoginActivity;->access$602(Lcom/android/settings/wifi/WebLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
