.class Lcom/android/settings/wifi/WebLoginActivity$6;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WebLoginActivity;->checkConnectedWIFIStatus(Z)V
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

    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity$6;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity$6;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0b32

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/WebLoginActivity$6;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mSsid:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WebLoginActivity;->access$1200(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity$6;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
