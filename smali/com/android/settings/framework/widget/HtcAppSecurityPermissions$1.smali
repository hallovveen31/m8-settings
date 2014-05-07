.class Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$1;
.super Ljava/lang/Object;
.source "HtcAppSecurityPermissions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getPermissionsView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$1;->this$0:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$1;->this$0:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$1;->this$0:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    #getter for: Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z
    invoke-static {v0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->access$000(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->mExpanded:Z
    invoke-static {v1, v0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->access$002(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;Z)Z

    .line 268
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$1;->this$0:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    #calls: Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->showPermissions()V
    invoke-static {v0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->access$100(Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;)V

    .line 269
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
