.class Lcom/android/settings/AppPicker$HtcAppViewHolder;
.super Ljava/lang/Object;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcAppViewHolder"
.end annotation


# instance fields
.field public appIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field public appText:Lcom/htc/widget/HtcListItem2LineText;

.field public itemContainer:Lcom/htc/widget/HtcListItem;

.field public rootView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/AppPicker;


# direct methods
.method private constructor <init>(Lcom/android/settings/AppPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->this$0:Lcom/android/settings/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AppPicker;Lcom/android/settings/AppPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/AppPicker$HtcAppViewHolder;-><init>(Lcom/android/settings/AppPicker;)V

    return-void
.end method
