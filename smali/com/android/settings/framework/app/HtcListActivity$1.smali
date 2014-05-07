.class Lcom/android/settings/framework/app/HtcListActivity$1;
.super Ljava/lang/Object;
.source "HtcListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcListActivity$1;->this$0:Lcom/android/settings/framework/app/HtcListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity$1;->this$0:Lcom/android/settings/framework/app/HtcListActivity;

    iget-object v0, v0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcListActivity$1;->this$0:Lcom/android/settings/framework/app/HtcListActivity;

    iget-object v1, v1, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
