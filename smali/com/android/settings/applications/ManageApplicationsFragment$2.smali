.class Lcom/android/settings/applications/ManageApplicationsFragment$2;
.super Ljava/lang/Object;
.source "ManageApplicationsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsFragment;->PostCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ITEM_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$2;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    const-string v0, "FPS (%s tab fling and pan in Apps)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment$2;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$800(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$2;->ITEM_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1035
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1012
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    packed-switch p2, :pswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$2;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$2;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1030
    return-void

    .line 1015
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$2;->ITEM_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsStart(Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$2;->ITEM_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
