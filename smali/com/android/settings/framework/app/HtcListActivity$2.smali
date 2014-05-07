.class Lcom/android/settings/framework/app/HtcListActivity$2;
.super Ljava/lang/Object;
.source "HtcListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcListActivity$2;->this$0:Lcom/android/settings/framework/app/HtcListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity$2;->this$0:Lcom/android/settings/framework/app/HtcListActivity;

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/framework/app/HtcListActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 309
    return-void
.end method
