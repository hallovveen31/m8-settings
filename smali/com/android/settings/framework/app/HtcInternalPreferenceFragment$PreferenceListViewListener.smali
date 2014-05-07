.class Lcom/android/settings/framework/app/HtcInternalPreferenceFragment$PreferenceListViewListener;
.super Ljava/lang/Object;
.source "HtcInternalPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceListViewListener"
.end annotation


# instance fields
.field private final WHICH_ITEM:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment$PreferenceListViewListener;->this$0:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FPS (%s fling and pan)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment$PreferenceListViewListener;->WHICH_ITEM:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment$PreferenceListViewListener;->WHICH_ITEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsStart(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment$PreferenceListViewListener;->WHICH_ITEM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsFinish(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
