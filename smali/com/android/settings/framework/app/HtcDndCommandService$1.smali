.class Lcom/android/settings/framework/app/HtcDndCommandService$1;
.super Ljava/lang/Object;
.source "HtcDndCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcDndCommandService;->showDisableActiveEventToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcDndCommandService;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcDndCommandService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcDndCommandService$1;->this$0:Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/settings/framework/app/HtcDndCommandService;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/app/HtcDndCommandService;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcDndCommandService$1;->this$0:Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06bf

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/app/HtcDndCommandService;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    invoke-static {}, Lcom/android/settings/framework/app/HtcDndCommandService;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
