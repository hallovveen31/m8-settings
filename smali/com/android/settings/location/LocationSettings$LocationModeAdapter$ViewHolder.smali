.class Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings$LocationModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mListItem:Lcom/htc/widget/HtcListItem;

.field mRadioButton:Lcom/htc/widget/HtcRadioButton;

.field mTextContent:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$1:Lcom/android/settings/location/LocationSettings$LocationModeAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings$LocationModeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$LocationModeAdapter$ViewHolder;->this$1:Lcom/android/settings/location/LocationSettings$LocationModeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
