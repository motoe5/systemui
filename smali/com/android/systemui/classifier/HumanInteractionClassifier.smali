.class public Lcom/android/systemui/classifier/HumanInteractionClassifier;
.super Lcom/android/systemui/classifier/Classifier;
.source "HumanInteractionClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/HumanInteractionClassifier$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;


# instance fields
.field private final mBufferedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentType:I

.field private final mDpi:F

.field private mEnableClassifier:Z

.field private final mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/classifier/HumanInteractionClassifier;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/classifier/Classifier;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    .line 54
    iput-boolean v5, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    .line 55
    iput v7, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    .line 57
    new-instance v1, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;-><init>(Lcom/android/systemui/classifier/HumanInteractionClassifier;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    .line 73
    new-instance v1, Lcom/android/systemui/classifier/ClassifierData;

    iget v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/ClassifierData;-><init>(F)V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    .line 74
    new-instance v1, Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-direct {v1}, Lcom/android/systemui/classifier/HistoryEvaluator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    .line 76
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/android/systemui/classifier/StrokeClassifier;

    .line 77
    new-instance v2, Lcom/android/systemui/classifier/AnglesClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/AnglesClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v5

    .line 78
    new-instance v2, Lcom/android/systemui/classifier/SpeedClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/SpeedClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v4

    .line 79
    new-instance v2, Lcom/android/systemui/classifier/DurationCountClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/DurationCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v6

    .line 80
    new-instance v2, Lcom/android/systemui/classifier/EndPointRatioClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/EndPointRatioClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 81
    new-instance v2, Lcom/android/systemui/classifier/EndPointLengthClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/EndPointLengthClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 82
    new-instance v2, Lcom/android/systemui/classifier/AccelerationClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/AccelerationClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 83
    new-instance v2, Lcom/android/systemui/classifier/SpeedAnglesClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/SpeedAnglesClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 84
    new-instance v2, Lcom/android/systemui/classifier/LengthCountClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/LengthCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v7

    .line 85
    new-instance v2, Lcom/android/systemui/classifier/DirectionClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/DirectionClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 76
    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    .line 88
    new-array v1, v6, [Lcom/android/systemui/classifier/GestureClassifier;

    .line 89
    new-instance v2, Lcom/android/systemui/classifier/PointerCountClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/PointerCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v5

    .line 90
    new-instance v2, Lcom/android/systemui/classifier/ProximityClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/ProximityClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v4

    .line 88
    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 94
    const-string/jumbo v2, "HIC_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 96
    const/4 v4, -0x1

    .line 93
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    .line 99
    return-void
.end method

.method private addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/systemui/classifier/ClassifierData;->update(Landroid/view/MotionEvent;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v3, v12, v11

    .line 156
    .local v3, "c":Lcom/android/systemui/classifier/StrokeClassifier;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/classifier/StrokeClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 155
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "c":Lcom/android/systemui/classifier/StrokeClassifier;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_1
    if-ge v11, v13, :cond_1

    aget-object v2, v12, v11

    .line 160
    .local v2, "c":Lcom/android/systemui/classifier/GestureClassifier;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/classifier/GestureClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 159
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 163
    .end local v2    # "c":Lcom/android/systemui/classifier/GestureClassifier;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v11}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 164
    .local v8, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v8, :cond_7

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v11}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/classifier/Stroke;

    .line 166
    .local v9, "stroke":Lcom/android/systemui/classifier/Stroke;
    const/4 v5, 0x0

    .line 167
    .local v5, "evaluation":F
    sget-boolean v11, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v11, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "stroke"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_4
    if-ge v11, v13, :cond_5

    aget-object v3, v12, v11

    .line 169
    .restart local v3    # "c":Lcom/android/systemui/classifier/StrokeClassifier;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v3, v14, v9}, Lcom/android/systemui/classifier/StrokeClassifier;->getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F

    move-result v4

    .line 170
    .local v4, "e":F
    sget-boolean v14, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v14, :cond_2

    .line 171
    invoke-virtual {v3}, Lcom/android/systemui/classifier/StrokeClassifier;->getTag()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "tag":Ljava/lang/String;
    const-string/jumbo v14, " "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v4, v15

    if-ltz v15, :cond_4

    .end local v10    # "tag":Ljava/lang/String;
    :goto_5
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 174
    :cond_2
    add-float/2addr v5, v4

    .line 168
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 167
    .end local v3    # "c":Lcom/android/systemui/classifier/StrokeClassifier;
    .end local v4    # "e":F
    :cond_3
    const/4 v7, 0x0

    .local v7, "sb":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 172
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "c":Lcom/android/systemui/classifier/StrokeClassifier;
    .restart local v4    # "e":F
    .restart local v10    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 177
    .end local v3    # "c":Lcom/android/systemui/classifier/StrokeClassifier;
    .end local v4    # "e":F
    .end local v10    # "tag":Ljava/lang/String;
    :cond_5
    sget-boolean v11, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v11, :cond_6

    .line 178
    const-string/jumbo v11, " addTouchEvent"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v11, v5}, Lcom/android/systemui/classifier/HistoryEvaluator;->addStroke(F)V

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 183
    .end local v5    # "evaluation":F
    .end local v9    # "stroke":Lcom/android/systemui/classifier/Stroke;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 184
    .local v1, "action":I
    const/4 v11, 0x1

    if-eq v1, v11, :cond_8

    const/4 v11, 0x3

    if-ne v1, v11, :cond_e

    .line 185
    :cond_8
    const/4 v5, 0x0

    .line 186
    .restart local v5    # "evaluation":F
    sget-boolean v11, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v11, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "gesture"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_7
    if-ge v11, v13, :cond_c

    aget-object v2, v12, v11

    .line 188
    .restart local v2    # "c":Lcom/android/systemui/classifier/GestureClassifier;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v2, v14}, Lcom/android/systemui/classifier/GestureClassifier;->getFalseTouchEvaluation(I)F

    move-result v4

    .line 189
    .restart local v4    # "e":F
    sget-boolean v14, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v14, :cond_9

    .line 190
    invoke-virtual {v2}, Lcom/android/systemui/classifier/GestureClassifier;->getTag()Ljava/lang/String;

    move-result-object v10

    .line 191
    .restart local v10    # "tag":Ljava/lang/String;
    const-string/jumbo v14, " "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v4, v15

    if-ltz v15, :cond_b

    .end local v10    # "tag":Ljava/lang/String;
    :goto_8
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    :cond_9
    add-float/2addr v5, v4

    .line 187
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 186
    .end local v2    # "c":Lcom/android/systemui/classifier/GestureClassifier;
    .end local v4    # "e":F
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    goto :goto_6

    .line 191
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "c":Lcom/android/systemui/classifier/GestureClassifier;
    .restart local v4    # "e":F
    .restart local v10    # "tag":Ljava/lang/String;
    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 195
    .end local v2    # "c":Lcom/android/systemui/classifier/GestureClassifier;
    .end local v4    # "e":F
    .end local v10    # "tag":Ljava/lang/String;
    :cond_c
    sget-boolean v11, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v11, :cond_d

    .line 196
    const-string/jumbo v11, " addTouchEvent"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v11, v5}, Lcom/android/systemui/classifier/HistoryEvaluator;->addGesture(F)V

    .line 199
    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 202
    .end local v5    # "evaluation":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/systemui/classifier/ClassifierData;->cleanUp(Landroid/view/MotionEvent;)V

    .line 203
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 105
    :cond_0
    sget-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    return-object v0
.end method

.method private updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 111
    const-string/jumbo v3, "HIC_enable"

    .line 109
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    .line 112
    return-void

    :cond_0
    move v0, v1

    .line 109
    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string/jumbo v0, "HIC"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return v0
.end method

.method public isFalseTouch()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-boolean v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    if-eqz v3, :cond_3

    .line 218
    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/HistoryEvaluator;->getEvaluation()F

    move-result v0

    .line 219
    .local v0, "evaluation":F
    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    const/4 v1, 0x1

    .line 220
    .local v1, "result":Z
    :goto_0
    sget-boolean v3, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v3, :cond_1

    .line 221
    const-string/jumbo v3, "isFalseTouch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string/jumbo v5, "eval="

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 222
    const-string/jumbo v5, " result="

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 221
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_1
    return v1

    .line 219
    .end local v1    # "result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0

    .line 227
    .end local v0    # "evaluation":F
    .end local v1    # "result":Z
    :cond_3
    return v2
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 208
    .local v0, "c":Lcom/android/systemui/classifier/Classifier;
    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "c":Lcom/android/systemui/classifier/Classifier;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 212
    .restart local v0    # "c":Lcom/android/systemui/classifier/Classifier;
    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    .end local v0    # "c":Lcom/android/systemui/classifier/Classifier;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 120
    iget-boolean v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    if-nez v2, :cond_0

    .line 121
    return-void

    .line 131
    :cond_0
    iget v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 132
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/android/systemui/classifier/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    .line 135
    .local v1, "pointEnd":Lcom/android/systemui/classifier/Point;
    :goto_0
    new-instance v3, Lcom/android/systemui/classifier/Point;

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float v4, v2, v4

    .line 136
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v5

    .line 135
    invoke-direct {v3, v4, v2}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v2

    .line 136
    const v3, 0x3dcccccd    # 0.1f

    .line 135
    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-direct {p0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 142
    .local v0, "action":I
    if-ne v0, v6, :cond_2

    .line 143
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 144
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-direct {p0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 145
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 150
    .end local v0    # "action":I
    .end local v1    # "pointEnd":Lcom/android/systemui/classifier/Point;
    :cond_2
    :goto_1
    return-void

    .line 148
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    .line 116
    return-void
.end method
