.class public Lcom/android/systemui/volume/ZenModePanel;
.super Landroid/widget/FrameLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenModePanel$1;,
        Lcom/android/systemui/volume/ZenModePanel$2;,
        Lcom/android/systemui/volume/ZenModePanel$3;,
        Lcom/android/systemui/volume/ZenModePanel$Callback;,
        Lcom/android/systemui/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui/volume/ZenModePanel$H;,
        Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;,
        Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field public static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAttached:Z

.field private mAttachedZen:I

.field private mAutoRule:Landroid/view/View;

.field private mAutoTitle:Landroid/widget/TextView;

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mConditions:[Landroid/service/notification/Condition;

.field private final mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mCountdownConditionSupported:Z

.field private mEdit:Landroid/view/ViewGroup;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExpanded:Z

.field private final mForeverId:Landroid/net/Uri;

.field private final mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

.field private mHidden:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

.field private final mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

.field private mRequestingConditions:Z

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mTimeCondition:Landroid/service/notification/Condition;

.field private final mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

.field private mVoiceCapable:Z

.field private mZenAlarmWarning:Landroid/widget/TextView;

.field protected mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field protected final mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field protected mZenConditions:Landroid/widget/LinearLayout;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionCustomize:Landroid/widget/TextView;

.field private mZenIntroductionMessage:Landroid/widget/TextView;

.field protected mZenModeButtonLayoutId:I

.field protected mZenModeConditionLayoutId:I

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field private mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/ZenModePanel;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/ZenModePanel;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z
    .param p4, "rowId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    .line 81
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    .line 82
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    .line 83
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 84
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$H;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    .line 101
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ZenModePanel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    .line 923
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$1;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 1058
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$2;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 1086
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$3;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    .line 145
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    .line 149
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    .line 151
    const v0, 0x7f0d012b

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeConditionLayoutId:I

    .line 152
    const v0, 0x7f0d012a

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeButtonLayoutId:I

    .line 153
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "new ZenModePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    return-void
.end method

.method private announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 6
    .param p1, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    const/4 v4, 0x0

    .line 829
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 831
    .local v1, "zen":I
    packed-switch v1, :pswitch_data_0

    .line 842
    return-void

    .line 833
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f110227

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "modeText":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 845
    iget-object v4, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 844
    const v4, 0x7f110582

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 846
    return-void

    .line 836
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f110224

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_0

    .line 839
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f110222

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_0

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .locals 20
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "row"    # Landroid/view/View;
    .param p3, "rowId"    # I

    .prologue
    .line 724
    if-nez p1, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "condition must not be null"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 725
    :cond_0
    move-object/from16 v0, p1

    iget v15, v0, Landroid/service/notification/Condition;->state:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_7

    const/4 v7, 0x1

    .line 727
    .local v7, "enabled":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .line 728
    .local v14, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 729
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v15, :cond_9

    const/4 v8, 0x1

    .line 730
    .local v8, "first":Z
    :goto_2
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v15, :cond_1

    .line 731
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 733
    :cond_1
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 734
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v15}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v6

    .line 735
    .local v6, "conditionId":Landroid/net/Uri;
    sget-boolean v15, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "bind i="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " first="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 736
    const-string/jumbo v19, " condition="

    .line 735
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_2
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v15, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 738
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v18, Lcom/android/systemui/volume/ZenModePanel$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v6}, Lcom/android/systemui/volume/ZenModePanel$4;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 751
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    if-nez v15, :cond_3

    .line 752
    const v15, 0x1020002

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    .line 754
    :cond_3
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v15, :cond_4

    .line 755
    const v15, 0x1020014

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    .line 756
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 758
    :cond_4
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    if-nez v15, :cond_5

    .line 759
    const v15, 0x1020015

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    .line 760
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 762
    :cond_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 764
    .local v9, "line1":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 765
    .local v10, "line2":Ljava/lang/String;
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 767
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    :goto_4
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v15, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 773
    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_c

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    .line 775
    const v15, 0x1020019

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 776
    .local v4, "button1":Landroid/widget/ImageView;
    new-instance v15, Lcom/android/systemui/volume/ZenModePanel$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/android/systemui/volume/ZenModePanel$5;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    const v15, 0x102001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 784
    .local v5, "button2":Landroid/widget/ImageView;
    new-instance v15, Lcom/android/systemui/volume/ZenModePanel$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/android/systemui/volume/ZenModePanel$6;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    new-instance v18, Lcom/android/systemui/volume/ZenModePanel$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/volume/ZenModePanel$7;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 798
    .local v16, "time":J
    const/4 v15, 0x2

    move/from16 v0, p3

    if-eq v0, v15, :cond_13

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_13

    .line 799
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 800
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v15, v0, :cond_f

    .line 802
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-lez v15, :cond_d

    const/4 v15, 0x1

    :goto_6
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 803
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    sget-object v18, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v15, v0, :cond_e

    const/4 v15, 0x1

    :goto_7
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 812
    :goto_8
    invoke-virtual {v4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 813
    invoke-virtual {v5}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_12

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 819
    :goto_b
    if-eqz v8, :cond_6

    .line 820
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 821
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v4, v15}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v5, v15}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 825
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 826
    return-void

    .line 725
    .end local v4    # "button1":Landroid/widget/ImageView;
    .end local v5    # "button2":Landroid/widget/ImageView;
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "enabled":Z
    .end local v8    # "first":Z
    .end local v9    # "line1":Ljava/lang/String;
    .end local v10    # "line2":Ljava/lang/String;
    .end local v14    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .end local v16    # "time":J
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "enabled":Z
    goto/16 :goto_0

    .line 727
    :cond_8
    new-instance v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    .restart local v14    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    goto/16 :goto_1

    .line 729
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "first":Z
    goto/16 :goto_2

    .line 763
    .restart local v6    # "conditionId":Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .restart local v9    # "line1":Ljava/lang/String;
    goto/16 :goto_3

    .line 769
    .restart local v10    # "line2":Ljava/lang/String;
    :cond_b
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 770
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 773
    :cond_c
    const v15, 0x3ecccccd    # 0.4f

    goto/16 :goto_5

    .line 802
    .restart local v4    # "button1":Landroid/widget/ImageView;
    .restart local v5    # "button2":Landroid/widget/ImageView;
    .restart local v16    # "time":J
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 803
    :cond_e
    const/4 v15, 0x0

    goto :goto_7

    .line 805
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v12, v16, v18

    .line 806
    .local v12, "span":J
    sget v15, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v18, 0xea60

    mul-int v15, v15, v18

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v15, v12, v18

    if-lez v15, :cond_10

    const/4 v15, 0x1

    :goto_c
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 808
    sget v18, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 807
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v11

    .line 809
    .local v11, "maxCondition":Landroid/service/notification/Condition;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v0, v11, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_8

    .line 806
    .end local v11    # "maxCondition":Landroid/service/notification/Condition;
    :cond_10
    const/4 v15, 0x0

    goto :goto_c

    .line 812
    .end local v12    # "span":J
    :cond_11
    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_9

    .line 813
    :cond_12
    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_a

    .line 815
    :cond_13
    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b
.end method

.method private checkForAttachedZenChange()V
    .locals 4

    .prologue
    .line 350
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 351
    .local v0, "selectedZen":I
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_2

    .line 353
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->trackNoneSelected()V

    .line 358
    :cond_2
    return-void
.end method

.method private computeAlarmWarningText(Z)Ljava/lang/String;
    .locals 20
    .param p1, "zenNone"    # Z

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    const/16 v16, 0x0

    return-object v16

    .line 551
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 552
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v4

    .line 553
    .local v4, "nextAlarm":J
    cmp-long v16, v4, v6

    if-gez v16, :cond_1

    .line 554
    const/16 v16, 0x0

    return-object v16

    .line 556
    :cond_1
    const/4 v13, 0x0

    .line 557
    .local v13, "warningRes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 558
    :cond_2
    const v13, 0x7f110580

    .line 565
    :cond_3
    :goto_0
    if-nez v13, :cond_5

    .line 566
    const/16 v16, 0x0

    return-object v16

    .line 560
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 561
    .local v14, "time":J
    cmp-long v16, v14, v6

    if-lez v16, :cond_3

    cmp-long v16, v4, v14

    if-gez v16, :cond_3

    .line 562
    const v13, 0x7f11057f

    goto :goto_0

    .line 568
    .end local v14    # "time":J
    :cond_5
    sub-long v16, v4, v6

    const-wide/32 v18, 0x5265c00

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    const/4 v10, 0x1

    .line 569
    .local v10, "soon":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    invoke-static/range {v16 .. v17}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v3

    .line 570
    .local v3, "is24":Z
    if-eqz v10, :cond_8

    if-eqz v3, :cond_7

    const-string/jumbo v9, "Hm"

    .line 571
    .local v9, "skeleton":Ljava/lang/String;
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 572
    .local v8, "pattern":Ljava/lang/String;
    invoke-static {v8, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 573
    .local v2, "formattedTime":Ljava/lang/CharSequence;
    if-eqz v10, :cond_a

    const v12, 0x7f110103

    .line 574
    .local v12, "templateRes":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 575
    .local v11, "template":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    return-object v16

    .line 568
    .end local v2    # "formattedTime":Ljava/lang/CharSequence;
    .end local v3    # "is24":Z
    .end local v8    # "pattern":Ljava/lang/String;
    .end local v9    # "skeleton":Ljava/lang/String;
    .end local v10    # "soon":Z
    .end local v11    # "template":Ljava/lang/String;
    .end local v12    # "templateRes":I
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "soon":Z
    goto :goto_1

    .line 570
    .restart local v3    # "is24":Z
    :cond_7
    const-string/jumbo v9, "hma"

    .restart local v9    # "skeleton":Ljava/lang/String;
    goto :goto_2

    .end local v9    # "skeleton":Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_9

    const-string/jumbo v9, "EEEHm"

    .restart local v9    # "skeleton":Ljava/lang/String;
    goto :goto_2

    .end local v9    # "skeleton":Ljava/lang/String;
    :cond_9
    const-string/jumbo v9, "EEEhma"

    .restart local v9    # "skeleton":Ljava/lang/String;
    goto :goto_2

    .line 573
    .restart local v2    # "formattedTime":Ljava/lang/CharSequence;
    .restart local v8    # "pattern":Ljava/lang/String;
    :cond_a
    const v12, 0x7f110104

    .restart local v12    # "templateRes":I
    goto :goto_3
.end method

.method private confirmZenIntroduction()V
    .locals 4

    .prologue
    .line 273
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->prefKeyForConfirmation(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "prefKey":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "confirmZenIntroduction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$H;->sendEmptyMessage(I)Z

    .line 278
    return-void
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x0

    .line 434
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0
.end method

.method private createCondition(Landroid/net/Uri;)Landroid/service/notification/Condition;
    .locals 10
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 451
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 453
    .local v2, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    .line 454
    const-wide/32 v8, 0xea60

    .line 453
    div-long/2addr v6, v8

    long-to-int v4, v6

    .line 455
    .local v4, "mins":I
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 456
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x0

    .line 455
    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v0

    .line 457
    .local v0, "c":Landroid/service/notification/Condition;
    return-object v0

    .line 460
    .end local v0    # "c":Landroid/service/notification/Condition;
    .end local v2    # "time":J
    .end local v4    # "mins":I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v1

    return-object v1
.end method

.method private ensureSelection()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 687
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v4

    .line 688
    .local v4, "visibleConditions":I
    if-nez v4, :cond_0

    return-void

    .line 689
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 690
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v3

    .line 691
    .local v3, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 692
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not selecting a default, checked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_1
    return-void

    .line 689
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    .end local v3    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v1

    .line 697
    .local v1, "foreverTag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-nez v1, :cond_4

    return-void

    .line 698
    :cond_4
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "Selecting a default"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->getMinuteIndex()I

    move-result v0

    .line 700
    .local v0, "favoriteIndex":I
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    invoke-virtual {v5, v6}, Landroid/service/notification/Condition;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 701
    invoke-direct {p0, v8}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 713
    :goto_1
    return-void

    .line 702
    :cond_6
    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_7

    .line 703
    iget v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eqz v5, :cond_8

    .line 704
    :cond_7
    iget-object v5, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 706
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 707
    sget-object v6, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v6, v6, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 706
    invoke-static {v5, v6, v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 708
    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 709
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 711
    invoke-direct {p0, v8}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private fireExpanded()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onExpanded(Z)V

    .line 921
    :cond_0
    return-void
.end method

.method private fireInteraction()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onInteraction()V

    .line 915
    :cond_0
    return-void
.end method

.method private forever()Landroid/service/notification/Condition;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 629
    new-instance v0, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->foreverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    .line 630
    const/4 v6, 0x1

    move v7, v5

    .line 629
    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private static foreverSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 634
    const v0, 0x10406ed

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x0

    .line 422
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_0
    return-object v0
.end method

.method private getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    return-object v0
.end method

.method private getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedCondition()Landroid/service/notification/Condition;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    .line 501
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 502
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 503
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    return-object v3

    .line 501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_1
    return-object v4
.end method

.method private getSelectedZen(I)I
    .locals 2
    .param p1, "defValue"    # I

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, "zen":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "zen":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1    # "defValue":I
    :cond_0
    return p1
.end method

.method private getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;
    .locals 10

    .prologue
    .line 639
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    .line 640
    .local v7, "weekRange":Ljava/util/GregorianCalendar;
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    .line 641
    .local v8, "now":J
    invoke-direct {p0, v7}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    .line 642
    const/4 v1, 0x5

    const/4 v4, 0x6

    invoke-virtual {v7, v1, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 643
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v2

    .line 644
    .local v2, "nextAlarmMs":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 645
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 646
    .local v0, "nextAlarm":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 647
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    .line 649
    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 651
    sub-long v4, v2, v8

    long-to-float v4, v4

    const v5, 0x476a6000    # 60000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 652
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x1

    .line 650
    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v1

    return-object v1

    .line 655
    .end local v0    # "nextAlarm":Ljava/util/GregorianCalendar;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getView(I)Landroid/view/View;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 253
    packed-switch p1, :pswitch_data_0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    return-object v0

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    return-object v0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    return-object v0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getVisibleConditions()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 670
    const/4 v2, 0x0

    .line 671
    .local v2, "rt":I
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 672
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 673
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 673
    goto :goto_1

    .line 675
    :cond_1
    return v2
.end method

.method private handleExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 7
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v6, 0x1

    .line 479
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 480
    sget-boolean v3, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleExitConditionChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 482
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    .line 483
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 484
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 485
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 487
    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 488
    return-void

    .line 483
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v3, :cond_4

    .line 492
    iget-object v3, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 491
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 493
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, v3, v6}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 495
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 497
    :cond_4
    return-void
.end method

.method private handleUpdateConditions()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v3, 0x8

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 591
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    return-void

    .line 594
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v4, :cond_5

    const/4 v0, 0x0

    .line 595
    .local v0, "conditionCount":I
    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUpdateConditions conditionCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v4, v5, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 600
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_2

    .line 601
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 605
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v4, :cond_3

    .line 606
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v1

    .line 607
    .local v1, "nextAlarmCondition":Landroid/service/notification/Condition;
    if-eqz v1, :cond_6

    .line 608
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 612
    invoke-direct {p0, v1, v4, v7}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 622
    .end local v1    # "nextAlarmCondition":Landroid/service/notification/Condition;
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v4, :cond_4

    .line 623
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->ensureSelection()V

    .line 625
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 626
    return-void

    .line 594
    .end local v0    # "conditionCount":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v4

    .restart local v0    # "conditionCount":I
    goto :goto_0

    .line 616
    .restart local v1    # "nextAlarmCondition":Landroid/service/notification/Condition;
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .end local v1    # "nextAlarmCondition":Landroid/service/notification/Condition;
    :cond_7
    move v2, v3

    .line 625
    goto :goto_2
.end method

.method private handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 3
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 442
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 443
    .local v1, "zen":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    .line 444
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 447
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V

    .line 448
    return-void

    .line 442
    .end local v1    # "zen":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "zen":I
    goto :goto_0

    .line 445
    :cond_1
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_2

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .local v0, "c":Landroid/service/notification/Condition;
    goto :goto_1

    .line 446
    .end local v0    # "c":Landroid/service/notification/Condition;
    :cond_2
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->createCondition(Landroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v0

    .restart local v0    # "c":Landroid/service/notification/Condition;
    goto :goto_1
.end method

.method private handleUpdateZen(I)V
    .locals 4
    .param p1, "zen"    # I

    .prologue
    .line 464
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, p1, :cond_0

    .line 465
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 469
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    .line 470
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 471
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedCondition()Landroid/service/notification/Condition;

    move-result-object v0

    .line 472
    .local v0, "selected":Landroid/service/notification/Condition;
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 476
    .end local v0    # "selected":Landroid/service/notification/Condition;
    :cond_1
    return-void
.end method

.method private hideAllConditions()V
    .locals 4

    .prologue
    .line 679
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 680
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 681
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    :cond_0
    return-void
.end method

.method private static isCountdown(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p0, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 716
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .locals 2
    .param p1, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 720
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_volume_ZenModePanel_9690(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p0, "to"    # Landroid/view/View;
    .param p1, "from"    # Landroid/view/View;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 246
    const-wide/16 v2, 0x12c

    .line 245
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$2;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$2;-><init>(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_volume_ZenModePanel_9994(Landroid/view/View;)V
    .locals 1
    .param p0, "from"    # Landroid/view/View;

    .prologue
    .line 247
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onAttach()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 294
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 295
    iput-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    .line 296
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 297
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    .line 298
    .local v0, "manualRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 299
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAttach "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 302
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 303
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 307
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->ensureSelection()V

    .line 309
    return-void
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .locals 22
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z
    .param p4, "rowId"    # I

    .prologue
    .line 849
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/16 v9, 0xa3

    move/from16 v0, p3

    invoke-static {v5, v9, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 850
    const/4 v14, 0x0

    .line 851
    .local v14, "newCondition":Landroid/service/notification/Condition;
    sget-object v5, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v4, v5

    .line 852
    .local v4, "N":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_6

    .line 854
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v11

    .line 855
    .local v11, "conditionId":Landroid/net/Uri;
    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 856
    .local v18, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 857
    .local v16, "now":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v4, :cond_1

    .line 858
    if-eqz p3, :cond_3

    move v13, v12

    .line 859
    .local v13, "j":I
    :goto_1
    sget-object v5, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v8, v5, v13

    .line 860
    .local v8, "bucketMinutes":I
    const v5, 0xea60

    mul-int/2addr v5, v8

    int-to-long v0, v5

    move-wide/from16 v20, v0

    add-long v6, v16, v20

    .line 861
    .local v6, "bucketTime":J
    if-eqz p3, :cond_4

    cmp-long v5, v6, v18

    if-lez v5, :cond_4

    .line 862
    :cond_0
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 863
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 864
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 865
    const/4 v10, 0x0

    .line 863
    invoke-static/range {v5 .. v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v14

    .line 869
    .end local v6    # "bucketTime":J
    .end local v8    # "bucketMinutes":I
    .end local v13    # "j":I
    .end local v14    # "newCondition":Landroid/service/notification/Condition;
    :cond_1
    if-nez v14, :cond_2

    .line 870
    sget v5, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 871
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 872
    sget-object v9, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v9, v9, v10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 871
    invoke-static {v5, v9, v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v14

    .line 880
    .end local v11    # "conditionId":Landroid/net/Uri;
    .end local v12    # "i":I
    .end local v16    # "now":J
    .end local v18    # "time":J
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 881
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 882
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    .line 885
    return-void

    .line 858
    .restart local v11    # "conditionId":Landroid/net/Uri;
    .restart local v12    # "i":I
    .restart local v14    # "newCondition":Landroid/service/notification/Condition;
    .restart local v16    # "now":J
    .restart local v18    # "time":J
    :cond_3
    add-int/lit8 v5, v4, -0x1

    sub-int v13, v5, v12

    .restart local v13    # "j":I
    goto :goto_1

    .line 861
    .restart local v6    # "bucketTime":J
    .restart local v8    # "bucketMinutes":I
    :cond_4
    if-nez p3, :cond_5

    cmp-long v5, v6, v18

    if-ltz v5, :cond_0

    .line 857
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 876
    .end local v6    # "bucketTime":J
    .end local v8    # "bucketMinutes":I
    .end local v11    # "conditionId":Landroid/net/Uri;
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v16    # "now":J
    .end local v18    # "time":J
    :cond_6
    add-int/lit8 v9, v4, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eqz p3, :cond_7

    const/4 v5, 0x1

    :goto_3
    add-int/2addr v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v9, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 877
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 878
    sget-object v9, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v9, v9, v10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 877
    invoke-static {v5, v9, v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v14

    .local v14, "newCondition":Landroid/service/notification/Condition;
    goto :goto_2

    .line 876
    .local v14, "newCondition":Landroid/service/notification/Condition;
    :cond_7
    const/4 v5, -0x1

    goto :goto_3
.end method

.method private onDetach()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 312
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForAttachedZenChange()V

    .line 315
    iput-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    .line 316
    iput v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 317
    iput v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 318
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 320
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 322
    return-void
.end method

.method private static parseExistingTimeCondition(Landroid/content/Context;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 579
    if-nez p1, :cond_0

    return-object v4

    .line 580
    :cond_0
    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 581
    .local v2, "time":J
    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    return-object v4

    .line 582
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 583
    .local v8, "now":J
    sub-long v10, v2, v8

    .line 584
    .local v10, "span":J
    cmp-long v0, v10, v6

    if-lez v0, :cond_2

    sget v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    :cond_2
    return-object v4

    .line 586
    :cond_3
    long-to-float v0, v10

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 587
    const/4 v6, 0x0

    move-object v1, p0

    .line 585
    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method private static prefKeyForConfirmation(I)Ljava/lang/String;
    .locals 1
    .param p0, "zen"    # I

    .prologue
    .line 281
    packed-switch p0, :pswitch_data_0

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 283
    :pswitch_0
    const-string/jumbo v0, "DndConfirmedPriorityIntroduction"

    return-object v0

    .line 285
    :pswitch_1
    const-string/jumbo v0, "DndConfirmedSilenceIntroduction"

    return-object v0

    .line 287
    :pswitch_2
    const-string/jumbo v0, "DndConfirmedAlarmIntroduction"

    return-object v0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z
    .locals 2
    .param p0, "lhs"    # Landroid/service/notification/Condition;
    .param p1, "rhs"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x0

    .line 430
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private select(Landroid/service/notification/Condition;)V
    .locals 5
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v4, -0x1

    .line 888
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-nez v1, :cond_3

    .line 890
    :cond_1
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Ignoring condition selection outside of manual zen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_2
    return-void

    .line 893
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    .line 894
    .local v0, "realConditionId":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v1, :cond_4

    .line 895
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$8;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/net/Uri;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 902
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 903
    if-nez v0, :cond_6

    .line 904
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    .line 908
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 909
    return-void

    .line 905
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eq v1, v4, :cond_5

    .line 906
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    goto :goto_0
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 417
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 419
    return-void
.end method

.method private setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 362
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireExpanded()V

    .line 366
    return-void
.end method

.method private setRequestingConditions(Z)V
    .locals 4
    .param p1, "requesting"    # Z

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 371
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestingConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/content/Context;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 375
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_3

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 382
    :goto_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initial bucket index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_2
    iput-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    .line 389
    :goto_1
    return-void

    .line 378
    :cond_3
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 380
    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v1, v1, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 379
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    goto :goto_0

    .line 387
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    goto :goto_1
.end method

.method private setSessionExitCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSessionExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 339
    return-void
.end method

.method private setToMidnight(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 659
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 660
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 661
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 662
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 663
    return-void
.end method

.method private transitionFrom(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "from"    # Landroid/view/View;
    .param p2, "to"    # Landroid/view/View;

    .prologue
    .line 239
    new-instance v0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$4;

    invoke-direct {v0, p2, p1}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method private updateWidgets()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 516
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v7}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 517
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v7}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->pendingUpdateWidgets()V

    .line 518
    return-void

    .line 520
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v3

    .line 521
    .local v3, "zen":I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    const/4 v5, 0x1

    .line 522
    .local v5, "zenImportant":Z
    :goto_0
    const/4 v7, 0x2

    if-ne v3, v7, :cond_5

    const/4 v6, 0x1

    .line 523
    .local v6, "zenNone":Z
    :goto_1
    const/4 v7, 0x3

    if-ne v3, v7, :cond_6

    const/4 v4, 0x1

    .line 524
    .local v4, "zenAlarm":Z
    :goto_2
    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v7}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->-get1(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_7

    .line 525
    :cond_1
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v7}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->-get2(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 524
    if-nez v7, :cond_7

    .line 526
    :cond_2
    if-eqz v4, :cond_8

    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v7}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->-get0(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v7

    xor-int/lit8 v0, v7, 0x1

    .line 528
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-boolean v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-eqz v7, :cond_9

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 529
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    if-eqz v0, :cond_a

    move v7, v9

    :goto_5
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 530
    if-eqz v0, :cond_3

    .line 531
    if-eqz v5, :cond_b

    .line 532
    const v1, 0x7f110584

    .line 538
    .local v1, "message":I
    :goto_6
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v10, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 539
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v7}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 540
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    move v7, v9

    :goto_7
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    .end local v1    # "message":I
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/ZenModePanel;->computeAlarmWarningText(Z)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "warning":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    if-eqz v2, :cond_f

    :goto_8
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    return-void

    .line 521
    .end local v2    # "warning":Ljava/lang/String;
    .end local v4    # "zenAlarm":Z
    .end local v5    # "zenImportant":Z
    .end local v6    # "zenNone":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "zenImportant":Z
    goto :goto_0

    .line 522
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "zenNone":Z
    goto :goto_1

    .line 523
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "zenAlarm":Z
    goto :goto_2

    .line 524
    :cond_7
    const/4 v0, 0x1

    .local v0, "introduction":Z
    goto :goto_3

    .line 526
    .end local v0    # "introduction":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "introduction":Z
    goto :goto_3

    .end local v0    # "introduction":Z
    :cond_9
    move v7, v9

    .line 528
    goto :goto_4

    :cond_a
    move v7, v8

    .line 529
    goto :goto_5

    .line 533
    :cond_b
    if-eqz v4, :cond_c

    .line 534
    const v1, 0x7f110581

    .restart local v1    # "message":I
    goto :goto_6

    .line 535
    .end local v1    # "message":I
    :cond_c
    iget-boolean v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    if-eqz v7, :cond_d

    .line 536
    const v1, 0x7f110586

    .restart local v1    # "message":I
    goto :goto_6

    .line 537
    .end local v1    # "message":I
    :cond_d
    const v1, 0x7f110585

    .restart local v1    # "message":I
    goto :goto_6

    :cond_e
    move v7, v8

    .line 540
    goto :goto_7

    .end local v1    # "message":I
    .restart local v2    # "warning":Ljava/lang/String;
    :cond_f
    move v9, v8

    .line 543
    goto :goto_8
.end method


# virtual methods
.method protected addZenConditions(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 393
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeButtonLayoutId:I

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 394
    .local v1, "rb":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 395
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 396
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeConditionLayoutId:I

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 397
    .local v2, "rbc":Landroid/view/View;
    add-int v3, v0, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 398
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "rb":Landroid/view/View;
    .end local v2    # "rbc":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected createZenButtons()V
    .locals 4

    .prologue
    .line 174
    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 177
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 175
    const v2, 0x7f110225

    .line 176
    const v3, 0x7f110226

    .line 175
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 180
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 178
    const v2, 0x7f110223

    .line 179
    const v3, 0x7f110222

    .line 178
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 183
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 181
    const v2, 0x7f110228

    .line 182
    const v3, 0x7f110227

    .line 181
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 185
    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 5
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 404
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isCountdownConditionSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    .line 405
    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    .line 406
    .local v0, "countdownDelta":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 407
    .local v1, "minConditions":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->addZenConditions(I)V

    .line 408
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 409
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 410
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init mExitCondition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    .line 412
    return-void

    .line 405
    .end local v0    # "countdownDelta":I
    .end local v1    # "minConditions":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "countdownDelta":I
    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_volume_ZenModePanel_8029(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_volume_ZenModePanel_8197(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onPrioritySettings()V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_volume_ZenModePanel_9230(II)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_volume_ZenModePanel_9415(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->update()V

    .line 270
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const v4, 0x1020016

    const/4 v3, 0x4

    .line 189
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->createZenButtons()V

    .line 191
    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    .line 192
    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    const v2, 0x7f110583

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 204
    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    .line 205
    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0a0309

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 207
    const v0, 0x7f0a030a

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    .line 209
    const v0, 0x7f0a00c6

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    .line 211
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyText:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    .line 216
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 328
    :cond_0
    if-eqz p1, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->onAttach()V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->onDetach()V

    goto :goto_0
.end method

.method public setAutoText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/ZenModePanel$Callback;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 439
    return-void
.end method

.method public setEmptyState(II)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$5;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 233
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 234
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->transitionFrom(Landroid/view/View;Landroid/view/View;)V

    .line 235
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    .line 236
    return-void
.end method
