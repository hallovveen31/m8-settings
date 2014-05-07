.class Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient$1;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient$1;->this$1:Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient$1;->this$1:Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;

    iget-object v0, v0, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wifi/WebLoginActivity;->checkConnectedWIFIStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WebLoginActivity;->access$000(Lcom/android/settings/wifi/WebLoginActivity;Z)V

    .line 231
    return-void
.end method
