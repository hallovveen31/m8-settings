.class Lcom/android/settings/MasterClear$3;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/MasterClear$3;->this$0:Lcom/android/settings/MasterClear;

    #getter for: Lcom/android/settings/MasterClear;->mExternalStorageCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$300(Lcom/android/settings/MasterClear;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->toggle()V

    .line 318
    return-void
.end method
