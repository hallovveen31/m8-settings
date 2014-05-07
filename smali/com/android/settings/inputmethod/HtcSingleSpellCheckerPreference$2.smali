.class Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;
.super Ljava/lang/Object;
.source "HtcSingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    #getter for: Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;
    invoke-static {v0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->access$100(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    #calls: Lcom/htc/preference/HtcPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v3}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->access$300(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    #getter for: Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;
    invoke-static {v0}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->access$100(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    #getter for: Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {v1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->access$200(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    goto :goto_0
.end method
