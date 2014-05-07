.class Lcom/android/settings/HtcAbsSettings$1;
.super Lcom/android/settings/framework/widget/HtcAbsListView$OnScrollListener;
.source "HtcAbsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcAbsSettings;->addAutoTestLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcAbsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcAbsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/HtcAbsSettings$1;->this$0:Lcom/android/settings/HtcAbsSettings;

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAbsListView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Ljava/lang/Object;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Ljava/lang/Object;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "FPS (Settings fling and pan)"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsStart(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "FPS (Settings fling and pan)"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsFinish(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
