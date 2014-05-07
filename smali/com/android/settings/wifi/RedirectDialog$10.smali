.class Lcom/android/settings/wifi/RedirectDialog$10;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/RedirectDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/RedirectDialog;

.field final synthetic val$checkbox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/RedirectDialog;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$10;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/RedirectDialog$10;->val$checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$10;->val$checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->performClick()Z

    return-void
.end method
