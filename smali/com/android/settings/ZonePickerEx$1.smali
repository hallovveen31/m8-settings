.class Lcom/android/settings/ZonePickerEx$1;
.super Ljava/lang/Object;
.source "ZonePickerEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ZonePickerEx;->configActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ZonePickerEx;


# direct methods
.method constructor <init>(Lcom/android/settings/ZonePickerEx;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/ZonePickerEx$1;->this$0:Lcom/android/settings/ZonePickerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/ZonePickerEx$1;->this$0:Lcom/android/settings/ZonePickerEx;

    invoke-virtual {v0}, Lcom/android/settings/ZonePickerEx;->onBackPressed()V

    .line 100
    return-void
.end method
