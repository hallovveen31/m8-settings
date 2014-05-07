.class Lcom/android/settings/applications/RunningProcessesView$1;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RunningProcessesView;->addAutoTestLog(Lcom/htc/widget/HtcListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final ITEM_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$1;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FPS (Running tab fling and pan in Apps)"

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$1;->ITEM_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "FPS (Running tab fling and pan in Apps)"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsStart(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "FPS (Running tab fling and pan in Apps)"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsFinish(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
