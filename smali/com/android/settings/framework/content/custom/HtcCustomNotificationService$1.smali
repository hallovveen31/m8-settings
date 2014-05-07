.class Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;
.super Ljava/lang/Object;
.source "HtcCustomNotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;->this$0:Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;

    iput-object p2, p0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->doCustomization(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->access$000(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;->this$0:Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
