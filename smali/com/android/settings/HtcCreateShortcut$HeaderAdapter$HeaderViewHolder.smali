.class Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "HtcCreateShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field icon:Lcom/htc/widget/HtcListItemColorIcon;

.field itemContainer:Lcom/htc/widget/HtcListItem;

.field final synthetic this$1:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

.field title:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method private constructor <init>(Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;->this$1:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;Lcom/android/settings/HtcCreateShortcut$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;)V

    return-void
.end method
