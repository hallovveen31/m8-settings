.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodId:Ljava/lang/String;

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/preference/HtcCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemLocale:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 1
    .parameter "targetImiId"

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 334
    return-void
.end method

.method private createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 26

    .prologue
    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v18

    .line 216
    .local v18, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 218
    .local v8, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    const/4 v3, 0x0

    .line 220
    .local v3, N:I
    :goto_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v3, :cond_b

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 222
    .local v11, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v20

    .line 223
    .local v20, subtypeCount:I
    const/16 v24, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    .line 220
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 218
    .end local v3           #N:I
    .end local v10           #i:I
    .end local v11           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v20           #subtypeCount:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 224
    .restart local v3       #N:I
    .restart local v10       #i:I
    .restart local v11       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v20       #subtypeCount:I
    :cond_2
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 230
    :cond_3
    new-instance v15, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v15, v8}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 231
    .local v15, keyboardSettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 233
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 235
    .local v16, label:Ljava/lang/CharSequence;
    invoke-virtual/range {v15 .. v16}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v15, v12}, Lcom/htc/preference/HtcPreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 238
    new-instance v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v5, v8}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 239
    .local v5, autoCB:Lcom/htc/preference/HtcCheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {v15, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 242
    new-instance v4, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v4, v8}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 243
    .local v4, activeInputMethodsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const v24, 0x7f0c1022

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 244
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 246
    const/4 v13, 0x0

    .line 247
    .local v13, isAutoSubtype:Z
    const/4 v6, 0x0

    .line 248
    .local v6, autoSubtypeLabel:Ljava/lang/CharSequence;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v22, subtypePreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    if-lez v20, :cond_8

    .line 250
    const/4 v14, 0x0

    .local v14, j:I
    :goto_3
    move/from16 v0, v20

    if-ge v14, v0, :cond_6

    .line 251
    invoke-virtual {v11, v14}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v19

    .line 252
    .local v19, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 254
    .local v21, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 255
    if-nez v13, :cond_4

    .line 256
    const/4 v13, 0x1

    .line 257
    move-object/from16 v6, v21

    .line 250
    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 260
    :cond_5
    new-instance v7, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v7, v8, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v7, chkbxPref:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 267
    .end local v7           #chkbxPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v19           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v21           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_6
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    .local v23, tmpAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_5
    const/4 v14, 0x0

    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_7

    .line 274
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/preference/HtcPreference;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 273
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 270
    :catch_0
    move-exception v9

    .line 271
    .local v9, e:Ljava/lang/Exception;
    move-object/from16 v22, v23

    goto :goto_5

    .line 276
    .end local v9           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v14           #j:I
    .end local v23           #tmpAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    :cond_8
    if-eqz v13, :cond_a

    .line 279
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 280
    sget-object v24, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->TAG:Ljava/lang/String;

    const-string v25, "Title for auto subtype is empty."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v24, "---"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 283
    :cond_9
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 286
    :cond_a
    const v24, 0x7f0c1023

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    goto/16 :goto_2

    .line 289
    .end local v4           #activeInputMethodsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v5           #autoCB:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v6           #autoSubtypeLabel:Ljava/lang/CharSequence;
    .end local v11           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v12           #imiId:Ljava/lang/String;
    .end local v13           #isAutoSubtype:Z
    .end local v15           #keyboardSettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v16           #label:Ljava/lang/CharSequence;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #subtypeCount:I
    .end local v22           #subtypePreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    :cond_b
    return-object v18
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 5
    .parameter "imiId"

    .prologue
    .line 293
    const/4 v0, 0x1

    .line 294
    .local v0, allSubtypesOff:Z
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 295
    .local v3, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 296
    .local v2, subtypePref:Lcom/htc/preference/HtcPreference;
    instance-of v4, v2, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local v2           #subtypePref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 302
    :cond_1
    return v0
.end method

.method private onCreateIMM()V
    .locals 2

    .prologue
    .line 206
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 210
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    .line 211
    return-void
.end method

.method private setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 1
    .parameter "targetImiId"

    .prologue
    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method private setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "imiId"
    .parameter "autoSelectionEnabled"

    .prologue
    const/4 v5, 0x0

    .line 306
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 307
    .local v0, autoSelectionCB:Lcom/htc/preference/HtcCheckBoxPreference;
    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 309
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 310
    .local v3, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    .line 311
    .local v2, subtypePref:Lcom/htc/preference/HtcPreference;
    instance-of v4, v2, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_2

    .line 315
    if-nez p2, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 316
    if-eqz p2, :cond_2

    .line 317
    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local v2           #subtypePref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .restart local v2       #subtypePref:Lcom/htc/preference/HtcPreference;
    :cond_3
    move v4, v5

    .line 315
    goto :goto_2

    .line 321
    .end local v2           #subtypePref:Lcom/htc/preference/HtcPreference;
    :cond_4
    if-eqz p2, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v4, v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 324
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAutoSelectionCB()V
    .locals 3

    .prologue
    .line 368
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    .local v1, imiId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 371
    .end local v1           #imiId:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V
    .locals 14
    .parameter "targetImiId"
    .parameter "check"

    .prologue
    .line 338
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 339
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, imiId:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 341
    :cond_1
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 344
    .local v0, autoCB:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 345
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 346
    .local v11, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v5, v13}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 348
    .local v8, implicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    .line 349
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreference;

    .line 350
    .local v10, subtypePref:Lcom/htc/preference/HtcPreference;
    instance-of v12, v10, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v12, :cond_2

    move-object v1, v10

    .line 351
    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 352
    .local v1, cb:Lcom/htc/preference/HtcCheckBoxPreference;
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 353
    if-eqz p2, :cond_2

    .line 354
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 355
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, implicitlyEnabledSubtypePrefKey:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 357
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 365
    .end local v0           #autoCB:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v1           #cb:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #imiId:Ljava/lang/String;
    .end local v7           #implicitlyEnabledSubtypePrefKey:Ljava/lang/String;
    .end local v8           #implicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypePref:Lcom/htc/preference/HtcPreference;
    .end local v11           #subtypePrefs:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 63
    .local v1, config:Landroid/content/res/Configuration;
    iget v4, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, arguments:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "input_method_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 73
    const-string v4, "input_method_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, inputMethodId:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 76
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 79
    .end local v2           #inputMethodId:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    .line 80
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 81
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 83
    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mTitle:Ljava/lang/String;

    .line 87
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSystemLocale:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->onCreateIMM()V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 90
    return-void

    .line 63
    .end local v0           #arguments:Landroid/os/Bundle;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 203
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 115
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 16
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 121
    move-object/from16 v0, p2

    instance-of v9, v0, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v9, :cond_6

    move-object/from16 v2, p2

    .line 122
    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 124
    .local v2, chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 125
    .local v7, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_0

    .line 129
    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    .line 130
    invoke-super/range {p0 .. p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    .line 193
    .end local v2           #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #imiId:Ljava/lang/String;
    :goto_0
    return v9

    .line 134
    .restart local v2       #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, id:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 138
    .local v1, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 139
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 140
    .local v6, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 141
    move-object v8, v6

    .line 142
    invoke-static {v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v10}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 146
    invoke-super/range {p0 .. p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    .end local v6           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    if-nez v8, :cond_4

    .line 152
    invoke-super/range {p0 .. p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    goto :goto_0

    .line 154
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v9, :cond_7

    .line 156
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1040014

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2, v5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;Lcom/htc/preference/HtcCheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    new-instance v11, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 183
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0fe7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 193
    .end local v1           #N:I
    .end local v2           #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #id:Ljava/lang/String;
    .end local v8           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    :goto_3
    invoke-super/range {p0 .. p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    goto/16 :goto_0

    .line 179
    .restart local v1       #N:I
    .restart local v2       #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #id:Ljava/lang/String;
    .restart local v8       #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 180
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto :goto_2

    .line 188
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v8           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5, v10}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    .line 106
    return-void
.end method
