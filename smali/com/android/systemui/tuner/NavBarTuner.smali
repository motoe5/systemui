.class public Lcom/android/systemui/tuner/NavBarTuner;
.super Lcom/android/systemui/tuner/TunerPreferenceFragment;
.source "NavBarTuner.java"


# static fields
.field private static final ICONS:[[I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTunables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [[I

    .line 75
    const v1, 0x7f0801b9

    const v2, 0x7f1104e4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 76
    const v1, 0x7f0800bd

    const v2, 0x7f1104f2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 77
    const v1, 0x7f0801e8

    const v2, 0x7f1104ef

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 78
    const v1, 0x7f08012d

    const v2, 0x7f1104ec

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 79
    const v1, 0x7f0801ea

    const v2, 0x7f1104f3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 80
    const v1, 0x7f080139

    const v2, 0x7f1104ee

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 74
    sput-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method private varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 1
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "k"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    .line 135
    .local v4, "type":Landroid/support/v7/preference/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keycode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 136
    .local v6, "keycode":Landroid/support/v7/preference/Preference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    .line 137
    .local v5, "icon":Landroid/support/v7/preference/ListPreference;
    invoke-direct {p0, v5}, Lcom/android/systemui/tuner/NavBarTuner;->setupIcons(Landroid/support/v7/preference/ListPreference;)V

    .line 138
    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$6;

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 158
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 138
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 159
    new-instance v7, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;

    move-object v8, p0

    move-object v9, p1

    move-object v10, v4

    move-object v11, v6

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .local v7, "listener":Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    invoke-virtual {v5, v7}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    new-instance v8, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$5;

    move-object v9, p0

    move-object v10, v6

    move-object v11, p1

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    return-void
.end method

.method private bindLayout(Landroid/support/v7/preference/ListPreference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    .line 118
    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 124
    const-string/jumbo v2, "sysui_nav_bar"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM;

    invoke-direct {v0}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_NavBarTuner_4724(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 1
    .param p0, "t"    # Lcom/android/systemui/tuner/TunerService$Tunable;

    .prologue
    .line 109
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5071(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)V
    .locals 1
    .param p0, "newValue"    # Ljava/lang/String;
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    .line 119
    move-object v0, p0

    .line 120
    .local v0, "val":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 121
    const-string/jumbo v0, "default"

    .line 123
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5307(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "preference1"    # Landroid/support/v7/preference/Preference;
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 126
    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "val":Ljava/lang/String;
    const-string/jumbo v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 128
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "sysui_nav_bar"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    return v1
.end method

.method private setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 6
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    .line 234
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "button":Ljava/lang/String;
    const-string/jumbo v4, "key"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-virtual {p4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "uri":Ljava/lang/String;
    const/16 v1, 0x42

    .line 239
    .local v1, "code":I
    :try_start_0
    invoke-virtual {p3}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .end local v1    # "code":I
    .end local v3    # "uri":Ljava/lang/String;
    :cond_0
    const-class v4, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v4, p1, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 240
    .restart local v1    # "code":I
    .restart local v3    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private setupIcons(Landroid/support/v7/preference/ListPreference;)V
    .locals 11
    .param p1, "icon"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 248
    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v7, v7

    new-array v3, v7, [Ljava/lang/CharSequence;

    .line 249
    .local v3, "labels":[Ljava/lang/CharSequence;
    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v7, v7

    new-array v6, v7, [Ljava/lang/CharSequence;

    .line 250
    .local v6, "values":[Ljava/lang/CharSequence;
    const/high16 v7, 0x41600000    # 14.0f

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 250
    invoke-static {v10, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v4, v7

    .line 252
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 253
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 254
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v2

    aget v8, v8, v9

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 254
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/high16 v7, -0x1000000

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 257
    invoke-virtual {v1, v9, v9, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v1, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 259
    .local v5, "span":Landroid/text/style/ImageSpan;
    const-string/jumbo v7, "  "

    invoke-virtual {v0, v7, v5, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 260
    const-string/jumbo v7, " "

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 261
    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v7, v7, v2

    aget v7, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    aput-object v0, v3, v2

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "span":Landroid/text/style/ImageSpan;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/ListPreference;)V
    .locals 14
    .param p1, "icon"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    const/4 v13, 0x0

    .line 189
    const/high16 v9, 0x41600000    # 14.0f

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 189
    const/4 v11, 0x1

    invoke-static {v11, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v7, v9

    .line 198
    .local v7, "size":I
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 199
    .local v5, "id":I
    const/4 v6, 0x0

    .line 200
    .local v6, "pkg":Ljava/lang/String;
    if-gtz v5, :cond_2

    .line 202
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "iconInfo":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 204
    const/4 v9, 0x0

    aget-object v6, v4, v9

    .line 205
    .local v6, "pkg":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 212
    .end local v4    # "iconInfo":[Ljava/lang/String;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 213
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {v6, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 213
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 215
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/high16 v9, -0x1000000

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 216
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    new-instance v8, Landroid/text/style/ImageSpan;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 218
    .local v8, "span":Landroid/text/style/ImageSpan;
    const-string/jumbo v9, "  "

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 219
    const-string/jumbo v9, " "

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 220
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v9, v9

    if-ge v3, v9, :cond_3

    .line 221
    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v9, v9, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v9, v5, :cond_1

    .line 222
    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v9, v9, v3

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 220
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v8    # "span":Landroid/text/style/ImageSpan;
    .local v6, "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "pkg":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v6    # "pkg":Ljava/lang/String;
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "i":I
    .restart local v8    # "span":Landroid/text/style/ImageSpan;
    :cond_3
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v5    # "id":I
    .end local v7    # "size":I
    .end local v8    # "span":Landroid/text/style/ImageSpan;
    :goto_2
    return-void

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "NavButton"

    const-string/jumbo v10, "Problem with summary"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    invoke-virtual {p1, v13}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5038(Landroid/support/v7/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$3;

    invoke-direct {v1, p3, p1}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5887(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "def"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p4, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "newValue"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v7, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$9;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5920(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p5, "keycode"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    move-object v3, p1

    .line 140
    .local v3, "val":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 141
    move-object v3, p2

    .line 143
    :cond_0
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "button":Ljava/lang/String;
    const-string/jumbo v4, "key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const-string/jumbo v4, "key"

    invoke-virtual {p3, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, "code":I
    invoke-virtual {p4, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p5, v6}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 152
    invoke-virtual {p4, v6}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    .end local v1    # "code":I
    .end local v2    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p3, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p5, v5}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 156
    invoke-virtual {p4, v5}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_6689(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p5, "preference"    # Landroid/support/v7/preference/Preference;
    .param p6, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 160
    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_6743(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 0
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    .line 162
    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_7049(Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p4, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p5, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 169
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 170
    .local v2, "editText":Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {p5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 173
    const/high16 v1, 0x1040000

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 174
    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x104000a

    .line 170
    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_7397(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "keycode"    # Landroid/support/v7/preference/Preference;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "type"    # Landroid/support/v7/preference/ListPreference;
    .param p5, "icon"    # Landroid/support/v7/preference/ListPreference;
    .param p6, "dialog"    # Landroid/content/DialogInterface;
    .param p7, "which"    # I

    .prologue
    .line 175
    const/16 v0, 0x42

    .line 177
    .local v0, "code":I
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 180
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    invoke-direct {p0, p3, p4, p2, p5}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    return-void

    .line 178
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 100
    const v0, 0x7f150003

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->addPreferencesFromResource(I)V

    .line 101
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->bindLayout(Landroid/support/v7/preference/ListPreference;)V

    .line 102
    const-string/jumbo v0, "sysui_nav_bar_left"

    const-string/jumbo v1, "space"

    const-string/jumbo v2, "left"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "sysui_nav_bar_right"

    const-string/jumbo v1, "menu_ime"

    const-string/jumbo v2, "right"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$1;

    invoke-direct {v1}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 110
    return-void
.end method
