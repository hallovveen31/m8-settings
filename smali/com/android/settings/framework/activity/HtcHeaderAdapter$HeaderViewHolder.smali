.class Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "HtcHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/HtcHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field headerSwitchItem:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field id:J

.field summary:Landroid/widget/TextView;

.field switch_:Lcom/htc/widget/HtcToggleButtonLight;

.field final synthetic this$0:Lcom/android/settings/framework/activity/HtcHeaderAdapter;

.field title:Landroid/widget/TextView;

.field type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/HtcHeaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/framework/activity/HtcHeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/HtcHeaderAdapter;Lcom/android/settings/framework/activity/HtcHeaderAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/framework/activity/HtcHeaderAdapter;)V

    return-void
.end method
