.class Lcom/android/settings/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    #getter for: Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    #getter for: Lcom/android/settings/OwnerInfoSettings;->mEditText:Lcom/htc/widget/HtcEditText;
    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->access$100(Lcom/android/settings/OwnerInfoSettings;)Lcom/htc/widget/HtcEditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcEditText;->setEnabled(Z)V

    .line 92
    return-void
.end method
