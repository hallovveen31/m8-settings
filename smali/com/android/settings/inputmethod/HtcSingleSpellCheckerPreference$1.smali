.class Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$1;
.super Ljava/lang/Object;
.source "HtcSingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    #calls: Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->access$000(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Landroid/view/View;)V

    return-void
.end method
