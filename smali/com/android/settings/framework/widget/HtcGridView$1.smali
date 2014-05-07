.class Lcom/android/settings/framework/widget/HtcGridView$1;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/widget/HtcGridView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/widget/HtcGridView;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/widget/HtcGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcGridView$1;->this$0:Lcom/android/settings/framework/widget/HtcGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcGridView$1;->this$0:Lcom/android/settings/framework/widget/HtcGridView;

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcGridView$1;->this$0:Lcom/android/settings/framework/widget/HtcGridView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    #setter for: Lcom/android/settings/framework/widget/HtcGridView;->mCurrentFirstVisiblePosition:I
    invoke-static {v0, v1}, Lcom/android/settings/framework/widget/HtcGridView;->access$002(Lcom/android/settings/framework/widget/HtcGridView;I)I

    return-void
.end method
